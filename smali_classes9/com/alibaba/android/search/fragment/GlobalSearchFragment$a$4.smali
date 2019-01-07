.class final Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;
.super Ljava/lang/Object;
.source "GlobalSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    .prologue
    .line 2598
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iput p2, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;->b:Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;

    iget v1, p0, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a$4;->a:I

    .line 3483
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/fragment/GlobalSearchFragment$a;->b(I)V

    .line 2602
    return-void
.end method
