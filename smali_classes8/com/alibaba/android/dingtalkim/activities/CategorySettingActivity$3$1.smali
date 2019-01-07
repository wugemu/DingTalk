.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3$1;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3$1;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v1}, Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 119
    :cond_0
    return-void
.end method
