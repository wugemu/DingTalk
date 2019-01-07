.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Lewl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 3
    .param p1, "result"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 645
    if-nez p1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v1, v2}, Leyv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
