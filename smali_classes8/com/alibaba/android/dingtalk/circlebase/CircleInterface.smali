.class public abstract Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;
.super Lckb;
.source "CircleInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;,
        Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lckb;-><init>()V

    .line 190
    return-void
.end method

.method public static f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 38
    return-void
.end method

.method public a(Landroid/app/Activity;JLcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "listener"    # Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

    .prologue
    .line 169
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    .prologue
    .line 159
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 234
    return-void
.end method

.method public a(Landroid/app/Activity;Lcov;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcov",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "listener":Lcov;, "Lcov<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 45
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method
