.class final Lfcx$1;
.super Ljava/lang/Object;
.source "AnnexViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfcx;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcx;


# direct methods
.method constructor <init>(Lfcx;)V
    .locals 0
    .param p1, "this$0"    # Lfcx;

    .prologue
    .line 61
    iput-object p1, p0, Lfcx$1;->a:Lfcx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfcx$1;->a:Lfcx;

    invoke-static {v1}, Lfcx;->a(Lfcx;)Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;->title:Ljava/lang/String;

    iget-object v2, p0, Lfcx$1;->a:Lfcx;

    invoke-static {v2}, Lfcx;->a(Lfcx;)Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleAttachmentObject;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lffo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
