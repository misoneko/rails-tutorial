class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end
  
  def tetris
    # そのままだとHTMLタグがエスケープされてしまうので、html_safeを使用
    render html: '<body id=D onKeyDown=K=event.keyCode-38><script>Z=X=[B=A=12];function Y(){for(C=[q=c=i=4];f=i--*K;c-=!Z[h+(K+6?p+K:C[i]=p*A-(p/9|0)*145)])p=B[i];for(c?0:K+6?h+=K:t?B=C:0;k=i=K=q--;f+=Z[A+p])X[p=h+B[q]]=t+1;if(e=!e)if(h+=A,f|B)for(Z=X,X=[l=228],B=[[-7,-20,6,h=17,-9,3,3][t=++t%7]-4,0,1,t-6?-A:2];l--;)for(l%A?l-=l%A*!Z[l]:(P+=++k,c=l+=A);--c>A;)Z[c]=Z[c-A];for(S="<b>";i<240;S+=(c=X[i]|(X[i]=Z[i]|=++i%A<2|i>228))?"<b style=color:#"+142*c+">■":"＿")i%A?0:S+="<br>";D.innerHTML=S+P;Z[5]||setTimeout(Y,99-P)}Y(h=e=K=t=P=0)</script>'.html_safe
  end
end