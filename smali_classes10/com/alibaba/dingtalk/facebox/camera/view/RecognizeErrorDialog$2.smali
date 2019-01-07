.class final Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;
.super Ljava/lang/Object;
.source "RecognizeErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 103
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 105
    .local v0, "radius":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v0

    int-to-float v6, v0

    int-to-float v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 107
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->b(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    .line 1044
    invoke-static {v3, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 110
    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->b(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->recordTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;->b:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lgrv$f;->dt_facebox_face_recognition_fail_content_v3:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method
