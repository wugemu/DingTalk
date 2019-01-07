.class public final Lekk$2;
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
    .line 67
    iput-object p1, p0, Lekk$2;->a:Lekk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lekk$2;->a:Lekk;

    .line 1023
    iget-object v0, v0, Lekk;->c:Lekk$a;

    .line 70
    invoke-interface {v0}, Lekk$a;->a()V

    .line 71
    return-void
.end method
