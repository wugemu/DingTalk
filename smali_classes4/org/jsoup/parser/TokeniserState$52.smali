.class final enum Lorg/jsoup/parser/TokeniserState$52;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 3
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1159
    invoke-virtual {p2}, Llem;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    invoke-virtual {p1}, Lles;->c()V

    .line 1161
    sget-object v1, Lorg/jsoup/parser/TokeniserState$52;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1190
    :goto_0
    :sswitch_0
    return-void

    .line 1164
    :cond_0
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1165
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1186
    invoke-virtual {p1}, Lles;->c()V

    .line 1187
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v1, v1, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    sget-object v1, Lorg/jsoup/parser/TokeniserState$52;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1173
    :sswitch_1
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1174
    invoke-virtual {p1}, Lles;->c()V

    .line 1175
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v1, v1, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    sget-object v1, Lorg/jsoup/parser/TokeniserState$52;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1179
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1180
    invoke-virtual {p1}, Lles;->c()V

    .line 1181
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1182
    invoke-virtual {p1}, Lles;->d()V

    .line 1183
    sget-object v1, Lorg/jsoup/parser/TokeniserState$52;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method
