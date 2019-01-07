.class public Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "RecognizeErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

.field private b:Landroid/app/Activity;

.field private c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userFace"    # Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->b:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    .line 45
    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 123
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 124
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 125
    .local v4, "width":I
    const/4 v3, 0x1

    .line 127
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 128
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 129
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 131
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 133
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 136
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;Ljava/lang/String;II)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 33
    .line 3092
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3093
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3094
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3096
    invoke-static {v0, p2, p3}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3097
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3098
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3099
    if-eqz v0, :cond_0

    .line 3100
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$2;-><init>(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 147
    .local v0, "viewId":I
    sget v1, Lgrv$d;->ok:I

    if-ne v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    invoke-interface {v1}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;->a()V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->dismiss()V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    sget v1, Lgrv$d;->cancel:I

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->a:Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;

    invoke-interface {v1}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$a;->b()V

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lgrv$e;->recognize_error_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->setContentView(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->setCanceledOnTouchOutside(Z)V

    .line 1060
    sget v0, Lgrv$d;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1061
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    sget v0, Lgrv$d;->ok:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1063
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    sget v0, Lgrv$d;->userface_portrait:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 1066
    sget v0, Lgrv$d;->userface_brief:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->e:Landroid/widget/TextView;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->hasFace:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1068
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->faceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog$1;-><init>(Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;)V

    .line 1086
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->c:Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;

    iget-object v1, v1, Lcom/alibaba/dingtalk/facebox/idl/model/UserFaceResult;->faceUrl:Ljava/lang/String;

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/view/RecognizeErrorDialog;->b:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2382
    if-eqz v0, :cond_0

    .line 2385
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2386
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "fetchCurrentUserFace Url is empty"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2389
    :cond_1
    const-string/jumbo v2, "rpc"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lgst$9;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1}, Lgst$9;-><init>(Landroid/os/Handler;Lcma;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
