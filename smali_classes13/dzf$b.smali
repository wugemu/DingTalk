.class public final Ldzf$b;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcma;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lduk;",
            ">;"
        }
    .end annotation
.end field

.field private c:[Ljava/io/File;

.field private d:Landroid/os/Handler;

.field private volatile e:Z

.field private f:I

.field private g:Lcom/alibaba/wukong/upload/UploadParams;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/io/File;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/io/File;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lduk;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Ldzf$b;->h:Landroid/app/Activity;

    .line 174
    iput-boolean v1, p0, Ldzf$b;->e:Z

    .line 175
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, p0, Ldzf$b;->c:[Ljava/io/File;

    .line 176
    iput v1, p0, Ldzf$b;->f:I

    .line 177
    invoke-static {p3}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    iput-object v0, p0, Ldzf$b;->a:Lcma;

    .line 178
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    iput-object v0, p0, Ldzf$b;->g:Lcom/alibaba/wukong/upload/UploadParams;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldzf$b;->b:Ljava/util/List;

    .line 182
    new-instance v0, Ldzf$b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldzf$b$1;-><init>(Ldzf$b;Landroid/os/Looper;)V

    iput-object v0, p0, Ldzf$b;->d:Landroid/os/Handler;

    .line 198
    return-void
.end method

.method static synthetic a(Ldzf$b;)V
    .locals 8
    .param p0, "x0"    # Ldzf$b;

    .prologue
    .line 160
    .line 1201
    iget v0, p0, Ldzf$b;->f:I

    iget-object v1, p0, Ldzf$b;->c:[Ljava/io/File;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Ldzf$b;->e:Z

    if-eqz v0, :cond_1

    .line 1202
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldzf$b$2;

    invoke-direct {v1, p0}, Ldzf$b$2;-><init>(Ldzf$b;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1214
    :goto_0
    return-void

    .line 1211
    :cond_1
    iget-object v0, p0, Ldzf$b;->a:Lcma;

    iget-object v1, p0, Ldzf$b;->b:Ljava/util/List;

    iget v2, p0, Ldzf$b;->f:I

    invoke-interface {v0, v1, v2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 1212
    iget v0, p0, Ldzf$b;->f:I

    iget-object v1, p0, Ldzf$b;->c:[Ljava/io/File;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ldzf$b;->c:[Ljava/io/File;

    iget v1, p0, Ldzf$b;->f:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldzf$b;->c:[Ljava/io/File;

    iget v1, p0, Ldzf$b;->f:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1213
    :cond_2
    invoke-virtual {p0}, Ldzf$b;->a()V

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v0, p0, Ldzf$b;->c:[Ljava/io/File;

    iget v1, p0, Ldzf$b;->f:I

    aget-object v0, v0, v1

    .line 1217
    invoke-static {v0}, Lcpe;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    iget-object v2, p0, Ldzf$b;->g:Lcom/alibaba/wukong/upload/UploadParams;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2058
    iput-object v3, v2, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 1220
    new-instance v2, Ldzf$a;

    invoke-direct {v2}, Ldzf$a;-><init>()V

    .line 1221
    invoke-static {v0}, Ldzf$a;->a(Ljava/io/File;)Ldzf$a;

    move-result-object v3

    .line 1222
    if-nez v3, :cond_4

    .line 1223
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v2, Ldzf$a;->b:J

    .line 1224
    iget-wide v4, v2, Ldzf$a;->b:J

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    iput-wide v4, v2, Ldzf$a;->a:J

    .line 1230
    :goto_1
    new-instance v3, Ldzf$b$3;

    invoke-direct {v3, p0, v1, v2, v0}, Ldzf$b$3;-><init>(Ldzf$b;Ljava/lang/String;Ldzf$a;Ljava/io/File;)V

    .line 1264
    const-class v0, Lifv;

    iget-object v1, p0, Ldzf$b;->h:Landroid/app/Activity;

    invoke-static {v3, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifv;

    .line 1265
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    iget-object v2, p0, Ldzf$b;->g:Lcom/alibaba/wukong/upload/UploadParams;

    .line 2128
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0

    .line 1226
    :cond_4
    iget-wide v4, v3, Ldzf$a;->b:J

    iput-wide v4, v2, Ldzf$a;->b:J

    .line 1227
    iget-wide v4, v3, Ldzf$a;->a:J

    iput-wide v4, v2, Ldzf$a;->a:J

    goto :goto_1
.end method

.method static synthetic b(Ldzf$b;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldzf$b;

    .prologue
    .line 160
    iget-object v0, p0, Ldzf$b;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Ldzf$b;)V
    .locals 3
    .param p0, "x0"    # Ldzf$b;

    .prologue
    .line 160
    .line 2280
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    const-string/jumbo v2, "nextUpload:"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    iget v0, p0, Ldzf$b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldzf$b;->f:I

    .line 2282
    iget-object v0, p0, Ldzf$b;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 274
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    const-string/jumbo v2, "cancelUpload:"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iput-boolean v3, p0, Ldzf$b;->e:Z

    .line 276
    iget-object v0, p0, Ldzf$b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Ldzf$b;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method
