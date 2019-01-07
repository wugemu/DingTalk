.class final Lftc$1;
.super Ljava/lang/Object;
.source "NameCardEditPresenter.java"

# interfaces
.implements Lfuj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lftc;


# direct methods
.method constructor <init>(Lftc;)V
    .locals 0
    .param p1, "this$0"    # Lftc;

    .prologue
    .line 39
    iput-object p1, p0, Lftc$1;->a:Lftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 43
    iget-object v0, p0, Lftc$1;->a:Lftc;

    .line 1027
    iget-object v0, v0, Lftc;->a:Lfsw$a;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lftc$1;->a:Lftc;

    .line 2027
    iget-object v0, v0, Lftc;->a:Lfsw$a;

    .line 44
    invoke-interface {v0, p1}, Lfsw$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 46
    :cond_0
    return-void
.end method
