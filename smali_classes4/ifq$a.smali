.class public final Lifq$a;
.super Ljava/lang/Object;
.source "SyncContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lifq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lifq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lifq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lifq;-><init>(B)V

    sput-object v0, Lifq$a;->a:Lifq;

    return-void
.end method
