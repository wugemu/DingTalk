.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$8;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$8;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$8;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->finish()V

    .line 674
    return-void
.end method
