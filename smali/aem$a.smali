.class final Laem$a;
.super Ljava/lang/Object;
.source "NetworkImageGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Laem;


# direct methods
.method public constructor <init>(Laem;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laem;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Laem$a;->b:Laem;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Laem$a;->a:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 151
    iget-object v1, p0, Laem$a;->b:Laem;

    iget-object v2, p0, Laem$a;->a:Ljava/lang/String;

    .line 1174
    invoke-static {}, Lyz;->a()Ljava/lang/String;

    move-result-object v0

    .line 1175
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1192
    const-string/jumbo v4, "User-Agent"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getWKUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alibaba/doraemon/request/Request;->setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1193
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1195
    const-string/jumbo v4, "NetworkImageGetter"

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1196
    new-instance v4, Laem$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v2, v5}, Laem$1;-><init>(Laem;Ljava/io/File;Ljava/lang/String;Ljava/io/FileOutputStream;)V

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1250
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 1252
    iget-object v0, v1, Laem;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, v1, Laem;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, v1, Laem;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method
