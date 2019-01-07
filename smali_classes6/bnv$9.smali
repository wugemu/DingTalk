.class final Lbnv$9;
.super Ljava/lang/Object;
.source "BaseViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbnv;


# direct methods
.method constructor <init>(Lbnv;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 1121
    iput-object p1, p0, Lbnv$9;->a:Lbnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1121
    check-cast p1, Ljava/util/List;

    .line 2124
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2126
    iget-object v0, p0, Lbnv$9;->a:Lbnv;

    invoke-static {v0, p1}, Lbnv;->a(Lbnv;Ljava/util/List;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1131
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v0, "getUserProfileList"

    invoke-static {v0, p1, p2}, Lbqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1138
    return-void
.end method
