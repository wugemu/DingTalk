.class public final Leej$a;
.super Ljava/lang/Object;
.source "OAActivityDatasourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Leej;


# direct methods
.method public constructor <init>(Leej;)V
    .locals 0
    .param p1, "this$0"    # Leej;

    .prologue
    .line 177
    iput-object p1, p0, Leej$a;->c:Leej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
