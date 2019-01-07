.class final Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;
.super Ljava/lang/Object;
.source "BanWordsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 881
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->b:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c$1;->a:Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;

    .line 1862
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity$c;->a:Landroid/widget/ToggleButton;

    .line 881
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BanWordsActivity;Z)V

    .line 882
    return-void
.end method
