.class public final Lekk$1;
.super Ljava/lang/Object;
.source "ImageFormatConvertHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lekk;->a(Ljava/util/List;Landroid/graphics/Bitmap$CompressFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lekk;


# direct methods
.method public constructor <init>(Lekk;)V
    .locals 0
    .param p1, "this$0"    # Lekk;

    .prologue
    .line 56
    iput-object p1, p0, Lekk$1;->a:Lekk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lekk$1;->a:Lekk;

    .line 1023
    iget-object v0, v0, Lekk;->c:Lekk$a;

    .line 59
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lekk$a;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method
