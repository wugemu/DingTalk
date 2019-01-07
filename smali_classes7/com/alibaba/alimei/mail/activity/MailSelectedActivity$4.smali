.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$4;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$4;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v0, 0x23

    .line 202
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1210
    if-eqz p1, :cond_1

    .line 1211
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v1, v0}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v1

    .line 1214
    :goto_0
    if-eqz p2, :cond_0

    .line 1215
    iget-object v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v2, v0}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 1218
    :cond_0
    sub-int v0, v1, v0

    .line 202
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
