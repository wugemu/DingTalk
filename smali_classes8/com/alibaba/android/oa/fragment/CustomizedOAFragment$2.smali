.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$2;
.super Ljava/lang/Object;
.source "CustomizedOAFragment.java"

# interfaces
.implements Lhdf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$2;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentUrl"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$2;->a:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V

    .line 274
    return-void
.end method
