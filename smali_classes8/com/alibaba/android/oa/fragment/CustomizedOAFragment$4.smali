.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;
.super Ljava/lang/Object;
.source "CustomizedOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    iput-object p2, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V

    .line 422
    return-void
.end method
