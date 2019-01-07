.class public final Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;
.super Ljava/lang/Object;
.source "MemberPickerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;,
        Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$a;,
        Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;,
        Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field public b:Landroid/content/BroadcastReceiver;

.field c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

.field private d:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;)V
    .locals 0
    .param p1, "onPickListener"    # Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;
    .param p2, "requestCodeProvider"    # Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

    .line 109
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->d:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;

    .line 110
    return-void
.end method

.method public static a()Ldq;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .prologue
    .line 28
    .line 1113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->d:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->d:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;

    .line 1114
    invoke-interface {v0}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "20170712"

    goto :goto_0
.end method
