.class final Lvd$a;
.super Ljava/io/FilterInputStream;
.source "BinaryTempFileBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvd;


# direct methods
.method public constructor <init>(Lvd;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lvd;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 132
    iput-object p1, p0, Lvd$a;->a:Lvd;

    .line 133
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 140
    iget-object v0, p0, Lvd$a;->a:Lvd;

    .line 1028
    iget-object v0, v0, Lvd;->b:Ljava/io/File;

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 141
    return-void
.end method
