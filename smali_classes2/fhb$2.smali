.class final Lfhb$2;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhm;

.field final synthetic b:Lfhb;


# direct methods
.method constructor <init>(Lfhb;Lfhm;)V
    .locals 0
    .param p1, "this$0"    # Lfhb;

    .prologue
    .line 99
    iput-object p1, p0, Lfhb$2;->b:Lfhb;

    iput-object p2, p0, Lfhb$2;->a:Lfhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lfhb$2;->b:Lfhb;

    iget-object v1, p0, Lfhb$2;->a:Lfhm;

    .line 1015
    iget-object v1, v1, Lfhm;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    .line 102
    iget-object v2, p0, Lfhb$2;->a:Lfhm;

    .line 1023
    iget-boolean v2, v2, Lfhm;->b:Z

    .line 102
    invoke-static {v0, v1, v2}, Lfhb;->a(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
