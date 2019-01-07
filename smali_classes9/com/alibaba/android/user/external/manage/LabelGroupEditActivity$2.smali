.class final Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$2;
.super Ljava/lang/Object;
.source "LabelGroupEditActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;


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
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;->a(Lcom/alibaba/android/user/external/manage/LabelGroupEditActivity;I)V

    .line 126
    return-void
.end method
