.class final Lewh$7;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:Lewh$b;

.field final synthetic c:Lewh;


# direct methods
.method constructor <init>(Lewh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lewh$b;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 931
    iput-object p1, p0, Lewh$7;->c:Lewh;

    iput-object p2, p0, Lewh$7;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object p3, p0, Lewh$7;->b:Lewh$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 934
    iget-object v2, p0, Lewh$7;->c:Lewh;

    iget-object v3, p0, Lewh$7;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "avatarName":Ljava/lang/String;
    iget-object v2, p0, Lewh$7;->c:Lewh;

    iget-object v3, p0, Lewh$7;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "nickName":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lewh$7$1;

    invoke-direct {v3, p0, v0, v1}, Lewh$7$1;-><init>(Lewh$7;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 945
    return-void
.end method
