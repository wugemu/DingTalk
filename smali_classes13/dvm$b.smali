.class final Ldvm$b;
.super Ljava/lang/Object;
.source "ExpandableGroupConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Ldvm;


# direct methods
.method constructor <init>(Ldvm;)V
    .locals 0
    .param p1, "this$0"    # Ldvm;

    .prologue
    .line 140
    iput-object p1, p0, Ldvm$b;->b:Ldvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
