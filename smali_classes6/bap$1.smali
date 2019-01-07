.class final Lbap$1;
.super Lckm$a;
.source "DingCommentRemindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 62
    iput-object p1, p0, Lbap$1;->a:Lbap;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 1065
    if-eqz p1, :cond_0

    .line 1066
    iget-object v0, p0, Lbap$1;->a:Lbap;

    invoke-virtual {v0}, Lbap;->a()V

    .line 62
    :cond_0
    return-void
.end method
