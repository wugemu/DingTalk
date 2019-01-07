.class final Lftc$2;
.super Ljava/lang/Object;
.source "NameCardEditPresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lftc;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lftc;


# direct methods
.method constructor <init>(Lftc;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lftc;

    .prologue
    .line 58
    iput-object p1, p0, Lftc$2;->b:Lftc;

    iput-object p2, p0, Lftc$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    if-nez p1, :cond_2

    .line 62
    iget-object v0, p0, Lftc$2;->b:Lftc;

    .line 1038
    iget-object v1, v0, Lftc;->b:Lfuj$a;

    if-nez v1, :cond_0

    .line 1039
    new-instance v1, Lftc$1;

    invoke-direct {v1, v0}, Lftc$1;-><init>(Lftc;)V

    iput-object v1, v0, Lftc;->b:Lfuj$a;

    .line 2047
    :cond_0
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 1049
    const/4 v2, 0x1

    iget-object v0, v0, Lftc;->c:Lfuj$a;

    invoke-virtual {v1, v2, v0}, Lfuj;->a(ZLfuj$a;)V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lftc$2;->b:Lftc;

    .line 3027
    iget-object v0, v0, Lftc;->a:Lfsw$a;

    .line 64
    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lftc$2;->b:Lftc;

    .line 4027
    iget-object v0, v0, Lftc;->a:Lfsw$a;

    .line 65
    invoke-interface {v0, p1}, Lfsw$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto :goto_0
.end method
