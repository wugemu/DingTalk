.class final Lfhb$3$1;
.super Ljava/lang/Object;
.source "ContactItemViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfhb$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfhb$3;


# direct methods
.method constructor <init>(Lfhb$3;)V
    .locals 0
    .param p1, "this$1"    # Lfhb$3;

    .prologue
    .line 122
    iput-object p1, p0, Lfhb$3$1;->a:Lfhb$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lfhb$3$1;->a:Lfhb$3;

    iget-object v0, v0, Lfhb$3;->c:Lfhb;

    iget-object v1, p0, Lfhb$3$1;->a:Lfhb$3;

    iget-object v1, v1, Lfhb$3;->a:Lcom/alibaba/android/user/contact/homepage/CommonContactItem;

    iget-object v2, p0, Lfhb$3$1;->a:Lfhb$3;

    iget-boolean v2, v2, Lfhb$3;->b:Z

    invoke-static {v0, v1, v2}, Lfhb;->b(Lfhb;Lcom/alibaba/android/user/contact/homepage/CommonContactItem;Z)V

    .line 127
    return-void
.end method
