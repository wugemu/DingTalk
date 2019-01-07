.class public interface abstract Lcom/alibaba/bee/impl/table/types/FieldConverter;
.super Ljava/lang/Object;
.source "FieldConverter.java"


# virtual methods
.method public abstract bindArg(Lcom/alibaba/bee/SQLiteStatement;ILjava/lang/Object;)V
.end method

.method public abstract getDataType()Lcom/alibaba/bee/impl/table/DataType;
.end method

.method public abstract resultToJava(Landroid/database/Cursor;I)Ljava/lang/Object;
.end method
