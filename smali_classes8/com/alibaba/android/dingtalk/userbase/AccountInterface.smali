.class public abstract Lcom/alibaba/android/dingtalk/userbase/AccountInterface;
.super Lckb;
.source "AccountInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 108
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 140
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "clearTask"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "clearTask"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public a(Lcjo$a;)V
    .locals 0
    .param p1, "listener"    # Lcjo$a;

    .prologue
    .line 130
    return-void
.end method

.method public a(Lifg;)V
    .locals 0
    .param p1, "command"    # Lifg;

    .prologue
    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "oldPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    return-void
.end method

.method public b(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "oldPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public e()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
