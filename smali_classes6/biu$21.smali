.class final Lbiu$21;
.super Lckm$a;
.source "SingleChatTaskDingHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbiu;


# direct methods
.method constructor <init>(Lbiu;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 182
    iput-object p1, p0, Lbiu$21;->a:Lbiu;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 182
    .line 1185
    iget-object v0, p0, Lbiu$21;->a:Lbiu;

    .line 2065
    invoke-virtual {v0}, Lbiu;->c()V

    .line 182
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
