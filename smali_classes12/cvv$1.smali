.class final Lcvv$1;
.super Ljava/lang/Object;
.source "GroupAdminAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcvv;


# direct methods
.method constructor <init>(Lcvv;)V
    .locals 0
    .param p1, "this$0"    # Lcvv;

    .prologue
    .line 61
    iput-object p1, p0, Lcvv$1;->a:Lcvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcvv$1;->a:Lcvv;

    invoke-static {v0}, Lcvv;->a(Lcvv;)Lcvv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcvv$1;->a:Lcvv;

    invoke-static {v0}, Lcvv;->a(Lcvv;)Lcvv$a;

    move-result-object v0

    invoke-interface {v0}, Lcvv$a;->a()V

    .line 67
    :cond_0
    return-void
.end method
