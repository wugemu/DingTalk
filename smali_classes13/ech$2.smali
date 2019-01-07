.class final Lech$2;
.super Ljava/lang/Object;
.source "MemberPreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lech;-><init>(Landroid/content/Context;Ljava/util/List;)V
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
    .line 122
    iput-object p1, p0, Lech$2;->a:Lech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lech$2;->a:Lech;

    invoke-virtual {v0}, Lech;->dismiss()V

    .line 126
    iget-object v0, p0, Lech$2;->a:Lech;

    invoke-static {v0}, Lech;->a(Lech;)Lech$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lech$2;->a:Lech;

    invoke-static {v0}, Lech;->a(Lech;)Lech$a;

    move-result-object v0

    invoke-interface {v0}, Lech$a;->a()V

    .line 129
    :cond_0
    return-void
.end method
