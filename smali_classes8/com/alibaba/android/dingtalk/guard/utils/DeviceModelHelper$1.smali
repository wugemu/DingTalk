.class public final Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;
.super Ljava/lang/Object;
.source "DeviceModelHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbtj;

.field final synthetic d:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;Ljava/lang/String;Lbtj;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->d:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->c:Lbtj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    check-cast p1, Lbsg;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->b:Ljava/lang/String;

    .line 1186
    if-eqz p1, :cond_1

    .line 1187
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$a;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->d:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$a;-><init>(Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper;Lbsg;J)V

    .line 1188
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1117
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->a(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->c:Lbtj;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->c:Lbtj;

    invoke-interface {v0, p1}, Lbtj;->a(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    const-string/jumbo v0, "XXDoorBeacon"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v0, "device_not_exist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "device_operator_not_in_org"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "device_kickoff_msg"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->a(Ljava/lang/String;J)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->c:Lbtj;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->c:Lbtj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbtj;->a(Ljava/lang/Object;)V

    .line 142
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->a:Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/utils/DeviceModelHelper$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 125
    return-void
.end method
