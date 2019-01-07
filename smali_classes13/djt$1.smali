.class final Ldjt$1;
.super Ljava/lang/Object;
.source "GroupAdminUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Ljava/lang/StringBuilder;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Ldjt$1;->a:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Ldjt$1;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Ldjt$1;->c:Ljava/lang/StringBuilder;

    iput-object p4, p0, Ldjt$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminUtils getSystemMessageNameString Exception code "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " Msg "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Ldjt$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Ldjt$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    .line 1130
    iget-object v0, p0, Ldjt$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1131
    new-instance v0, Ldjt$a;

    invoke-direct {v0}, Ldjt$a;-><init>()V

    .line 1132
    iget-object v1, p0, Ldjt$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldjt$a;->a:Ljava/lang/String;

    .line 1133
    iget-object v1, p0, Ldjt$1;->c:Ljava/lang/StringBuilder;

    iput-object v1, v0, Ldjt$a;->b:Ljava/lang/StringBuilder;

    .line 1134
    iget-object v1, p0, Ldjt$1;->d:Ljava/util/Map;

    iput-object v1, v0, Ldjt$a;->c:Ljava/util/Map;

    .line 1135
    iget-object v1, p0, Ldjt$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method
