.class final Lbiu$18;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;",
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
    .line 140
    iput-object p1, p0, Lbiu$18;->a:Lbiu;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 140
    .line 1143
    iget-object v0, p0, Lbiu$18;->a:Lbiu;

    .line 2065
    invoke-virtual {v0}, Lbiu;->g()V

    .line 1144
    iget-object v0, p0, Lbiu$18;->a:Lbiu;

    .line 3065
    invoke-virtual {v0}, Lbiu;->b()V

    .line 1145
    iget-object v0, p0, Lbiu$18;->a:Lbiu;

    .line 4065
    invoke-virtual {v0}, Lbiu;->i()V

    .line 1146
    iget-object v0, p0, Lbiu$18;->a:Lbiu;

    .line 5065
    invoke-virtual {v0}, Lbiu;->f()V

    .line 140
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method