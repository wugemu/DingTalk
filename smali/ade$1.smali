.class final Lade$1;
.super Ljava/lang/Object;
.source "AvatarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lade;->a(Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lade$b;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lade;


# direct methods
.method constructor <init>(Lade;Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lade;

    .prologue
    .line 105
    iput-object p1, p0, Lade$1;->d:Lade;

    iput-object p2, p0, Lade$1;->a:Lade$b;

    iput-object p3, p0, Lade$1;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lade$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lade$1;->a:Lade$b;

    iget-object v1, p0, Lade$1;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lade$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lade$b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 109
    return-void
.end method
