.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1$1;
.super Ljava/lang/Object;
.source "CustomizedOAFragment.java"

# interfaces
.implements Legh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;->a(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1$1;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1$1;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$1;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->d(Z)V

    .line 247
    return-void
.end method
