.class final Lfoa$4;
.super Ljava/lang/Object;
.source "ScreenShotFeedBackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfoa;->a(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfoa;


# direct methods
.method constructor <init>(Lfoa;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfoa;

    .prologue
    .line 141
    iput-object p1, p0, Lfoa$4;->c:Lfoa;

    iput-object p2, p0, Lfoa$4;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lfoa$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 144
    invoke-static {}, Lfnz;->a()Lfnz;

    move-result-object v0

    iget-boolean v0, v0, Lfnz;->a:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lfoa$4;->c:Lfoa;

    invoke-static {v0}, Lfoa;->b(Lfoa;)I

    .line 148
    iget-object v0, p0, Lfoa$4;->c:Lfoa;

    iget-object v1, p0, Lfoa$4;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lfoa$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfoa;->a(Lfoa;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method
