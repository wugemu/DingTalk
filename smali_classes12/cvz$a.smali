.class final Lcvz$a;
.super Ljava/lang/Object;
.source "GroupCooperativeOrgSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcvz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcvz;


# direct methods
.method constructor <init>(Lcvz;)V
    .locals 0
    .param p1, "this$0"    # Lcvz;

    .prologue
    .line 62
    iput-object p1, p0, Lcvz$a;->c:Lcvz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
