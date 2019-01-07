.class final Lbxt$2;
.super Lbyi$a;
.source "VideoViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxt;->a(Ljava/lang/String;IIIIILjava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Lbxt;


# direct methods
.method constructor <init>(Lbxt;Ljava/lang/String;IIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lbxt;

    .prologue
    .line 87
    iput-object p1, p0, Lbxt$2;->i:Lbxt;

    iput-object p2, p0, Lbxt$2;->a:Ljava/lang/String;

    iput p3, p0, Lbxt$2;->b:I

    iput p4, p0, Lbxt$2;->c:I

    iput p5, p0, Lbxt$2;->d:I

    iput p6, p0, Lbxt$2;->e:I

    iput p7, p0, Lbxt$2;->f:I

    iput-object p8, p0, Lbxt$2;->g:Ljava/lang/String;

    iput p9, p0, Lbxt$2;->h:I

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    .line 1090
    iget-object v0, p0, Lbxt$2;->i:Lbxt;

    invoke-static {v0}, Lbxt;->a(Lbxt;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lbxt$2;->i:Lbxt;

    iget-object v1, p0, Lbxt$2;->a:Ljava/lang/String;

    iget v2, p0, Lbxt$2;->b:I

    iget v3, p0, Lbxt$2;->c:I

    iget v4, p0, Lbxt$2;->d:I

    iget v5, p0, Lbxt$2;->e:I

    iget v6, p0, Lbxt$2;->f:I

    iget-object v7, p0, Lbxt$2;->g:Ljava/lang/String;

    iget v8, p0, Lbxt$2;->h:I

    invoke-static/range {v0 .. v8}, Lbxt;->a(Lbxt;Ljava/lang/String;IIIIILjava/lang/String;I)V

    .line 87
    :cond_0
    return-void
.end method
