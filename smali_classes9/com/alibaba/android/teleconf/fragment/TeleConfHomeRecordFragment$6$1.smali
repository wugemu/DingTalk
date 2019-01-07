.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6$1;
.super Lewj$a;
.source "TeleConfHomeRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-direct {p0}, Lewj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/CharSequence;I)V
    .locals 4
    .param p1, "menuItems"    # [Ljava/lang/CharSequence;
    .param p2, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 770
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    aget-object v0, p1, p2

    .line 775
    .local v0, "delete":Ljava/lang/CharSequence;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_common_delete:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "destItem":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$6$1;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V

    goto :goto_0
.end method
