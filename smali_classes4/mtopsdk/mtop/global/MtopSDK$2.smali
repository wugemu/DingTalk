.class final Lmtopsdk/mtop/global/MtopSDK$2;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/global/MtopSDK;->executeInitCoreTask(Landroid/content/Context;Lkkj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$100(Landroid/content/Context;)V

    .line 153
    return-void
.end method
