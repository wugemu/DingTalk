.class final Ldet$1;
.super Ljava/lang/Object;
.source "ChatMsgListGuideTipManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldet;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldet;


# direct methods
.method constructor <init>(Ldet;)V
    .locals 0
    .param p1, "this$0"    # Ldet;

    .prologue
    .line 145
    iput-object p1, p0, Ldet$1;->a:Ldet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Ldet$1;->a:Ldet;

    invoke-virtual {v0}, Ldet;->d()V

    .line 149
    return-void
.end method
