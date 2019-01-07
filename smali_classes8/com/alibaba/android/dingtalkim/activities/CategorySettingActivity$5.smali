.class final Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;
.super Ljava/lang/Object;
.source "CategorySettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;->a:Landroid/widget/EditText;

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
    .line 190
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "categoryName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)Lddc$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity$5;->b:Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategorySettingActivity;)Lddc$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lddc$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
