.class public final Lare$4;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lare;


# direct methods
.method public constructor <init>(Lare;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 223
    iput-object p1, p0, Lare$4;->b:Lare;

    iput-object p2, p0, Lare$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lare$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 223
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    invoke-static {p1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1227
    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lare$4;->b:Lare;

    iget-object v1, p0, Lare$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Lare;->a(Lare;Lcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 1230
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[AliMailFolderManager] loadAliMailFoldersFromRemote ali mail not login."

    aput-object v1, v0, v2

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lare$4;->b:Lare;

    iget-object v1, p0, Lare$4;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Lare;->b(Lare;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
