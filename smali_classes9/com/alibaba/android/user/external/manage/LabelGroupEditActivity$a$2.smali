.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    iput p2, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;->b:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    iget v1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$a$2;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->b(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V

    .line 402
    return-void
.end method
