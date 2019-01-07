.class final Lcuo$1;
.super Ljava/lang/Object;
.source "DingTextToViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuo;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcuo;


# direct methods
.method constructor <init>(Lcuo;)V
    .locals 0
    .param p1, "this$0"    # Lcuo;

    .prologue
    .line 21
    iput-object p1, p0, Lcuo$1;->a:Lcuo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    iget-object v0, p0, Lcuo$1;->a:Lcuo;

    invoke-static {v0}, Lcuo;->a(Lcuo;)V

    .line 25
    return-void
.end method
