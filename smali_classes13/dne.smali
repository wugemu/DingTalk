.class public final Ldne;
.super Ljava/lang/Object;
.source "MdParseCacher.java"


# instance fields
.field public a:Ldnc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldnc",
            "<",
            "Lldd;",
            ">;"
        }
    .end annotation
.end field

.field b:Ldnc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldnc",
            "<",
            "Lldd;",
            ">;"
        }
    .end annotation
.end field

.field c:Ldnc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldnc",
            "<",
            "Lldd;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lldd;",
            "Lcom/alibaba/android/dingtalkim/mdrender/format/DtImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ldng;

.field public f:Ldng;

.field public g:Ldng;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .prologue
    const/16 v1, 0x3e8

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ldnc;

    invoke-direct {v0, v1}, Ldnc;-><init>(I)V

    iput-object v0, p0, Ldne;->a:Ldnc;

    .line 43
    new-instance v0, Ldnc;

    invoke-direct {v0, v1}, Ldnc;-><init>(I)V

    iput-object v0, p0, Ldne;->b:Ldnc;

    .line 44
    new-instance v0, Ldnc;

    invoke-direct {v0, v1}, Ldnc;-><init>(I)V

    iput-object v0, p0, Ldne;->c:Ldnc;

    .line 45
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ldne;->d:Landroid/util/LruCache;

    .line 46
    new-instance v0, Ldng;

    iget-object v1, p0, Ldne;->a:Ldnc;

    iget-object v2, p0, Ldne;->d:Landroid/util/LruCache;

    invoke-direct {v0, v1, v2}, Ldng;-><init>(Ldnc;Landroid/util/LruCache;)V

    iput-object v0, p0, Ldne;->e:Ldng;

    .line 47
    new-instance v0, Ldng;

    iget-object v1, p0, Ldne;->b:Ldnc;

    iget-object v2, p0, Ldne;->d:Landroid/util/LruCache;

    invoke-direct {v0, v1, v2}, Ldng;-><init>(Ldnc;Landroid/util/LruCache;)V

    iput-object v0, p0, Ldne;->f:Ldng;

    .line 48
    new-instance v0, Ldng;

    iget-object v1, p0, Ldne;->c:Ldnc;

    iget-object v2, p0, Ldne;->d:Landroid/util/LruCache;

    invoke-direct {v0, v1, v2}, Ldng;-><init>(Ldnc;Landroid/util/LruCache;)V

    iput-object v0, p0, Ldne;->g:Ldng;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ldne;->a:Ldnc;

    .line 1038
    iget-object v0, v0, Ldnc;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 68
    iget-object v0, p0, Ldne;->b:Ldnc;

    .line 2038
    iget-object v0, v0, Ldnc;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 69
    iget-object v0, p0, Ldne;->c:Ldnc;

    .line 3038
    iget-object v0, v0, Ldnc;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 70
    iget-object v0, p0, Ldne;->d:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 71
    return-void
.end method
