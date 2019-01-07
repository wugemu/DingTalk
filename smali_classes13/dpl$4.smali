.class final Ldpl$4;
.super Ljava/lang/Object;
.source "MenuShieldHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldpl;


# direct methods
.method constructor <init>(Ldpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ldpl;

    .prologue
    .line 136
    iput-object p1, p0, Ldpl$4;->b:Ldpl;

    iput-object p2, p0, Ldpl$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Ldpl$4;->b:Ldpl;

    .line 1047
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldpl;->a:Z

    .line 146
    iget-object v0, p0, Ldpl$4;->b:Ldpl;

    invoke-static {v0}, Ldpl;->a(Ldpl;)V

    .line 147
    iget-object v0, p0, Ldpl$4;->a:Landroid/content/Context;

    sget v1, Lctk$i;->dt_message_shield_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    .line 1139
    iget-object v0, p0, Ldpl$4;->b:Ldpl;

    .line 2047
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldpl;->a:Z

    .line 1140
    iget-object v0, p0, Ldpl$4;->b:Ldpl;

    invoke-static {v0}, Ldpl;->a(Ldpl;)V

    .line 136
    return-void
.end method
