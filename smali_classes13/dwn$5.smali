.class final Ldwn$5;
.super Ljava/lang/Object;
.source "WorkItemBoxViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/ActionObject;

.field final synthetic b:Ldwn;


# direct methods
.method constructor <init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/ActionObject;)V
    .locals 0
    .param p1, "this$0"    # Ldwn;

    .prologue
    .line 285
    iput-object p1, p0, Ldwn$5;->b:Ldwn;

    iput-object p2, p0, Ldwn$5;->a:Lcom/alibaba/android/dingtalkim/models/ActionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Ldwn$5;->b:Ldwn;

    iget-object v1, p0, Ldwn$5;->a:Lcom/alibaba/android/dingtalkim/models/ActionObject;

    .line 1061
    invoke-virtual {v0, v1}, Ldwn;->a(Lcom/alibaba/android/dingtalkim/models/ActionObject;)V

    .line 289
    return-void
.end method
