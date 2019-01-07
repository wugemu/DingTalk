.class public interface abstract Lkfk;
.super Ljava/lang/Object;
.source "ITreeNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkfk$a;
    }
.end annotation


# static fields
.field public static final a:Lkfk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lkfk$a;

    invoke-direct {v0}, Lkfk$a;-><init>()V

    sput-object v0, Lkfk;->a:Lkfk;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract a(Ljava/util/List;)V
.end method

.method public abstract a(Lkfk;)V
.end method

.method public abstract a([Lkfk;)Z
.end method

.method public abstract b()Ljava/util/List;
.end method

.method public abstract b(Ljava/util/List;)V
.end method

.method public abstract b(Lkfk;)Z
.end method

.method public abstract c(Lkfk;)Z
.end method
