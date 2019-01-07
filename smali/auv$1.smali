.class final Lauv$1;
.super Ljava/lang/Object;
.source "HeaderSettingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lauv;->a(Lauz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lauy;

.field final synthetic b:Lauv;


# direct methods
.method constructor <init>(Lauv;Lauy;)V
    .locals 0
    .param p1, "this$0"    # Lauv;

    .prologue
    .line 53
    iput-object p1, p0, Lauv$1;->b:Lauv;

    iput-object p2, p0, Lauv$1;->a:Lauy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lauv$1;->b:Lauv;

    iget-object v0, v0, Lauv;->d:Laur;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lauv$1;->b:Lauv;

    iget-object v0, v0, Lauv;->d:Laur;

    iget-object v1, p0, Lauv$1;->a:Lauy;

    invoke-interface {v0, v1}, Laur;->onClick(Lauy;)V

    .line 59
    :cond_0
    return-void
.end method
