.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$14;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$14;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$14;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->c()V

    .line 230
    return-void
.end method
