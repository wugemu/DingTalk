.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$8;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$8;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$8;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->g(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;)V

    .line 446
    return-void
.end method
