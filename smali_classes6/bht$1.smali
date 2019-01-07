.class final Lbht$1;
.super Ljava/lang/Object;
.source "UserProfileEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbht;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lbht;


# direct methods
.method constructor <init>(Lbht;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "this$0"    # Lbht;

    .prologue
    .line 60
    iput-object p1, p0, Lbht$1;->b:Lbht;

    iput-object p2, p0, Lbht$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lbht$1;->b:Lbht;

    invoke-static {v0}, Lbht;->a(Lbht;)Lbht$a;

    move-result-object v0

    iget-object v1, p0, Lbht$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v0, v1}, Lbht$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 64
    return-void
.end method
