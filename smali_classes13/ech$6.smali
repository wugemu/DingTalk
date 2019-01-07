.class final Lech$6;
.super Ljava/lang/Object;
.source "MemberPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lech;


# direct methods
.method constructor <init>(Lech;)V
    .locals 0
    .param p1, "this$0"    # Lech;

    .prologue
    .line 226
    iput-object p1, p0, Lech$6;->a:Lech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 229
    iget-object v0, p0, Lech$6;->a:Lech;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lech;->a(Lech;Z)V

    .line 230
    iget-object v0, p0, Lech$6;->a:Lech;

    invoke-static {v0}, Lech;->c(Lech;)V

    .line 231
    return-void
.end method
