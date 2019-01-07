.class public final Lbbf$2;
.super Ljava/lang/Object;
.source "SingleChatTaskPresenter.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbf;


# direct methods
.method public constructor <init>(Lbbf;)V
    .locals 0
    .param p1, "this$0"    # Lbbf;

    .prologue
    .line 126
    iput-object p1, p0, Lbbf$2;->a:Lbbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SingleChatTaskActivity] user profile is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    const-string/jumbo v1, ""

    .line 1032
    iput-object v1, v0, Lbbf;->d:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    invoke-static {v0, v3}, Lbbf;->a(Lbbf;Z)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 2032
    iput-object v1, v0, Lbbf;->d:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    invoke-static {v0, v3}, Lbbf;->a(Lbbf;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SingleChatTaskActivity] get user profile failed, code:"

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    const-string/jumbo v1, ""

    .line 3032
    iput-object v1, v0, Lbbf;->d:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lbbf$2;->a:Lbbf;

    invoke-static {v0, v3}, Lbbf;->a(Lbbf;Z)V

    .line 144
    return-void
.end method
