.class public final Laem;
.super Ljava/lang/Object;
.source "NetworkImageGetter.java"

# interfaces
.implements Lcly$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laem$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Ljava/lang/String;

.field d:I

.field e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mTextView"    # Landroid/widget/TextView;
    .param p3, "srcText"    # Ljava/lang/String;
    .param p4, "maxImageWidth"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laem;->e:Ljava/util/HashSet;

    .line 47
    iput-object p1, p0, Laem;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Laem;->b:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Laem;->c:Ljava/lang/String;

    .line 50
    iput p4, p0, Laem;->d:I

    .line 51
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    .line 159
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 160
    invoke-static {v3, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    .line 133
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$e;->album_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Laem;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 135
    .local v2, "w":I
    iget-object v3, p0, Laem;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 136
    .local v1, "h":I
    invoke-virtual {v0, v6, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "source"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 58
    const-string/jumbo p1, ""

    .line 60
    :cond_0
    invoke-static {}, Lyz;->a()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "file":Ljava/io/File;
    const-string/jumbo v9, "http"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 71
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Laem;->a:Landroid/content/Context;

    if-eqz v9, :cond_2

    if-eqz v0, :cond_2

    .line 73
    iget-object v9, p0, Laem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    .line 74
    .local v8, "w":I
    iget-object v9, p0, Laem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 76
    .local v4, "h":I
    iget v9, p0, Laem;->d:I

    if-le v8, v9, :cond_1

    .line 77
    iget v9, p0, Laem;->d:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 78
    iget v8, p0, Laem;->d:I

    .line 80
    :cond_1
    invoke-virtual {v2, v11, v11, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "h":I
    .end local v8    # "w":I
    :goto_0
    return-object v2

    .line 82
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-direct {p0}, Laem;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 84
    goto :goto_0

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v9, p0, Laem;->e:Ljava/util/HashSet;

    if-eqz v9, :cond_4

    iget-object v9, p0, Laem;->e:Ljava/util/HashSet;

    invoke-virtual {v9, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 87
    sget-object v9, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 88
    invoke-static {v9}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v7

    .line 89
    .local v7, "thread":Laie;
    new-instance v9, Laem$a;

    invoke-direct {v9, p0, p1}, Laem$a;-><init>(Laem;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    .end local v7    # "thread":Laie;
    :cond_4
    invoke-direct {p0}, Laem;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 94
    :cond_5
    const-string/jumbo v9, "file:"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v9

    .line 96
    invoke-interface {v9}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "defaultAccount":Ljava/lang/String;
    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAttachmentByContentUri(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v5

    .line 99
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-eqz v5, :cond_8

    .line 100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, p1}, Laem;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 102
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Laem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    .line 104
    .restart local v8    # "w":I
    iget-object v9, p0, Laem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 106
    .restart local v4    # "h":I
    iget v9, p0, Laem;->d:I

    if-le v8, v9, :cond_6

    .line 107
    iget v9, p0, Laem;->d:I

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v9, v10

    int-to-float v10, v4

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 108
    iget v8, p0, Laem;->d:I

    .line 110
    :cond_6
    invoke-virtual {v2, v11, v11, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    .line 112
    .end local v4    # "h":I
    .end local v8    # "w":I
    :cond_7
    invoke-direct {p0}, Laem;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    goto/16 :goto_0

    .line 115
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    invoke-direct {p0}, Laem;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    .line 118
    .end local v1    # "defaultAccount":Ljava/lang/String;
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_9
    const-string/jumbo v9, "cid:"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    invoke-direct {p0}, Laem;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method
